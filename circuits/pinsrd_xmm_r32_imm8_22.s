  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                
.target:                               #        0     0      OPC=<label>           
  vmovd %ebx, %xmm9                    #  1     0     4      OPC=vmovd_xmm_r32     
  callq .move_128_64_xmm1_xmm10_xmm11  #  2     0x4   5      OPC=callq_label       
  movshdup %xmm11, %xmm15              #  3     0x9   5      OPC=movshdup_xmm_xmm  
  unpcklps %xmm15, %xmm9               #  4     0xe   4      OPC=unpcklps_xmm_xmm  
  movlhps %xmm9, %xmm1                 #  5     0x12  4      OPC=movlhps_xmm_xmm   
  retq                                 #  6     0x16  1      OPC=retq              
                                                                                   
.size target, .-target
