  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP  Bytes  Opcode             
.target:                                    #        0    0      OPC=<label>        
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0    5      OPC=callq_label    
  movzbq %dl, %rbx                          #  2     0x5  4      OPC=movzbq_r64_r8  
  xaddb %bh, %dh                            #  3     0x9  3      OPC=xaddb_rh_rh    
  retq                                      #  4     0xc  1      OPC=retq           
                                                                                    
.size target, .-target
