  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                     
.target:                                    #        0     0      OPC=<label>                
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label            
  vmovd %ebx, %xmm7                         #  2     0x5   4      OPC=vmovd_xmm_r32          
  vunpcklps %xmm7, %xmm1, %xmm9             #  3     0x9   4      OPC=vunpcklps_xmm_xmm_xmm  
  callq .move_r9b_to_byte_2_of_ymm1         #  4     0xd   5      OPC=callq_label            
  movsd %xmm9, %xmm1                        #  5     0x12  5      OPC=movsd_xmm_xmm          
  retq                                      #  6     0x17  1      OPC=retq                   
                                                                                             
.size target, .-target
