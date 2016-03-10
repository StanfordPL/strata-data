  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                    
.target:                            #        0     0      OPC=<label>               
  callq .move_128_064_xmm2_r12_r13  #  1     0     5      OPC=callq_label           
  vzeroall                          #  2     0x5   3      OPC=vzeroall              
  vpmovzxdq %xmm14, %ymm0           #  3     0x8   5      OPC=vpmovzxdq_ymm_xmm     
  xchgq %r12, %r13                  #  4     0xd   3      OPC=xchgq_r64_r64         
  vbroadcastss %xmm0, %xmm1         #  5     0x10  5      OPC=vbroadcastss_xmm_xmm  
  callq .move_064_128_r12_r13_xmm1  #  6     0x15  5      OPC=callq_label           
  retq                              #  7     0x1a  1      OPC=retq                  
                                                                                    
.size target, .-target
