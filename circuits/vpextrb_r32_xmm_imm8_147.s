  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                    
.target:                              #        0     0      OPC=<label>               
  vcvtps2pd %xmm1, %xmm14             #  1     0     4      OPC=vcvtps2pd_xmm_xmm     
  vmovlhps %xmm1, %xmm14, %xmm7       #  2     0x4   4      OPC=vmovlhps_xmm_xmm_xmm  
  vmaxsd %xmm1, %xmm7, %xmm1          #  3     0x8   4      OPC=vmaxsd_xmm_xmm_xmm    
  callq .move_byte_11_of_ymm1_to_r9b  #  4     0xc   5      OPC=callq_label           
  movzbl %r9b, %ebx                   #  5     0x11  4      OPC=movzbl_r32_r8         
  retq                                #  6     0x15  1      OPC=retq                  
                                                                                      
.size target, .-target
