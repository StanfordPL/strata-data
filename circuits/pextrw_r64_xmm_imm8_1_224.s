  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode             
.target:                                    #        0     0      OPC=<label>        
  callq .move_128_064_xmm1_r10_r11          #  1     0     5      OPC=callq_label    
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  2     0x5   5      OPC=callq_label    
  movzbq %r10b, %rbx                        #  3     0xa   4      OPC=movzbq_r64_r8  
  xchgb %bh, %ah                            #  4     0xe   2      OPC=xchgb_rh_rh    
  retq                                      #  5     0x10  1      OPC=retq           
                                                                                     
.size target, .-target
