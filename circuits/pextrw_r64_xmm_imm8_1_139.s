  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                
.target:                                    #        0     0      OPC=<label>           
  pmovzxwd %xmm1, %xmm3                     #  1     0     5      OPC=pmovzxwd_xmm_xmm  
  callq .move_128_064_xmm3_r8_r9            #  2     0x5   5      OPC=callq_label       
  callq .move_128_032_xmm3_eax_edx_r8d_r9d  #  3     0xa   5      OPC=callq_label       
  movq %r9, %rbx                            #  4     0xf   3      OPC=movq_r64_r64      
  retq                                      #  5     0x12  1      OPC=retq              
                                                                                        
.size target, .-target
