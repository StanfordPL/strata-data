  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                                 #  Line  RIP  Bytes  Opcode                   
.target:                               #        0    0      OPC=<label>              
  callq .move_128_64_xmm1_xmm10_xmm11  #  1     0    5      OPC=callq_label          
  vhsubpd %xmm10, %xmm11, %xmm8        #  2     0x5  5      OPC=vhsubpd_xmm_xmm_xmm  
  vmovq %xmm8, %rbx                    #  3     0xa  5      OPC=vmovq_r64_xmm        
  retq                                 #  4     0xf  1      OPC=retq                 
                                                                                     
.size target, .-target
