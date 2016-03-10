  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                     
.target:                              #        0     0      OPC=<label>                
  vaddss %xmm1, %xmm1, %xmm10         #  1     0     4      OPC=vaddss_xmm_xmm_xmm     
  vmovshdup %xmm1, %xmm14             #  2     0x4   4      OPC=vmovshdup_xmm_xmm      
  vsubsd %xmm10, %xmm1, %xmm1         #  3     0x8   5      OPC=vsubsd_xmm_xmm_xmm     
  vunpcklps %xmm14, %xmm1, %xmm1      #  4     0xd   5      OPC=vunpcklps_xmm_xmm_xmm  
  minss %xmm1, %xmm1                  #  5     0x12  4      OPC=minss_xmm_xmm          
  callq .move_byte_14_of_ymm1_to_r8b  #  6     0x16  5      OPC=callq_label            
  movzbl %r8b, %ebx                   #  7     0x1b  4      OPC=movzbl_r32_r8          
  retq                                #  8     0x1f  1      OPC=retq                   
                                                                                       
.size target, .-target
