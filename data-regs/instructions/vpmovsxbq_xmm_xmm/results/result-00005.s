  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  callq .move_128_064_xmm2_r12_r13  #  1     0     5      OPC=callq_label              
  vzeroall                          #  2     0x5   3      OPC=vzeroall                 
  movq %r12, %xmm4                  #  3     0x8   5      OPC=movq_xmm_r64             
  vpmovsxbq %xmm4, %ymm4            #  4     0xd   5      OPC=vpmovsxbq_ymm_xmm        
  vfmadd132pd %xmm6, %xmm4, %xmm1   #  5     0x12  5      OPC=vfmadd132pd_xmm_xmm_xmm  
  retq                              #  6     0x17  1      OPC=retq                     
                                                                                       
.size target, .-target
