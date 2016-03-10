  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                  
.target:                               #        0     0      OPC=<label>             
  callq .move_128_64_xmm1_xmm12_xmm13  #  1     0     5      OPC=callq_label         
  vmovd %ebx, %xmm9                    #  2     0x5   4      OPC=vmovd_xmm_r32       
  vmovss %xmm9, %xmm13, %xmm6          #  3     0x9   5      OPC=vmovss_xmm_xmm_xmm  
  punpcklqdq %xmm6, %xmm1              #  4     0xe   4      OPC=punpcklqdq_xmm_xmm  
  retq                                 #  5     0x12  1      OPC=retq                
                                                                                     
.size target, .-target
