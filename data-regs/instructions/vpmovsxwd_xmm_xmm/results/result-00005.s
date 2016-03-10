  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                
.target:                                #        0     0      OPC=<label>           
  vmovq %xmm2, %r13                     #  1     0     5      OPC=vmovq_r64_xmm     
  vzeroall                              #  2     0x5   3      OPC=vzeroall          
  vmovq %r13, %xmm5                     #  3     0x8   5      OPC=vmovq_xmm_r64     
  pmovsxwd %xmm5, %xmm10                #  4     0xd   6      OPC=pmovsxwd_xmm_xmm  
  callq .move_128_256_xmm10_xmm11_ymm1  #  5     0x13  5      OPC=callq_label       
  retq                                  #  6     0x18  1      OPC=retq              
                                                                                    
.size target, .-target
