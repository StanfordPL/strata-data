  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                   
.target:                                          #        0     0      OPC=<label>              
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label          
  vhaddps %xmm10, %xmm9, %xmm8                    #  2     0x5   5      OPC=vhaddps_xmm_xmm_xmm  
  pmovzxwq %xmm8, %xmm8                           #  3     0xa   6      OPC=pmovzxwq_xmm_xmm     
  vmovq %xmm8, %rbx                               #  4     0x10  5      OPC=vmovq_r64_xmm        
  retq                                            #  5     0x15  1      OPC=retq                 
                                                                                                 
.size target, .-target
