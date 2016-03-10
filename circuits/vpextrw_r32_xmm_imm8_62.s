  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode             
.target:                                    #        0     0      OPC=<label>        
  callq .move_128_64_xmm1_xmm12_xmm13       #  1     0     5      OPC=callq_label    
  callq .move_64_128_xmm12_xmm13_xmm2       #  2     0x5   5      OPC=callq_label    
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  3     0xa   5      OPC=callq_label    
  movzbq %r9b, %rbx                         #  4     0xf   4      OPC=movzbq_r64_r8  
  xchgw %r9w, %bx                           #  5     0x13  4      OPC=xchgw_r16_r16  
  retq                                      #  6     0x17  1      OPC=retq           
                                                                                     
.size target, .-target
