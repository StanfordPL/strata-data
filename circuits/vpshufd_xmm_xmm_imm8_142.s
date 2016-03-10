  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label             
  vmovq %xmm13, %xmm1                  #  2     0x5   5      OPC=vmovq_xmm_xmm           
  vmovsldup %xmm2, %xmm6               #  3     0xa   4      OPC=vmovsldup_xmm_xmm       
  vpunpckldq %xmm13, %xmm6, %xmm13     #  4     0xe   5      OPC=vpunpckldq_xmm_xmm_xmm  
  punpcklqdq %xmm13, %xmm1             #  5     0x13  5      OPC=punpcklqdq_xmm_xmm      
  retq                                 #  6     0x18  1      OPC=retq                    
                                                                                         
.size target, .-target
