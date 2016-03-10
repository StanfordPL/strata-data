  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                  
.target:                               #        0     0      OPC=<label>             
  callq .move_128_64_xmm1_xmm12_xmm13  #  1     0     5      OPC=callq_label         
  vmovd %ebx, %xmm7                    #  2     0x5   4      OPC=vmovd_xmm_r32       
  vxorpd %xmm13, %xmm7, %xmm5          #  3     0x9   5      OPC=vxorpd_xmm_xmm_xmm  
  vmovss %xmm7, %xmm5, %xmm9           #  4     0xe   4      OPC=vmovss_xmm_xmm_xmm  
  punpcklqdq %xmm9, %xmm1              #  5     0x12  5      OPC=punpcklqdq_xmm_xmm  
  retq                                 #  6     0x17  1      OPC=retq                
                                                                                     
.size target, .-target
