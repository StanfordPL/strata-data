  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                
.target:                                    #        0     0      OPC=<label>           
  xorq %rbx, %rbx                           #  1     0     3      OPC=xorq_r64_r64      
  pmovzxwq %xmm1, %xmm2                     #  2     0x3   5      OPC=pmovzxwq_xmm_xmm  
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  3     0x8   5      OPC=callq_label       
  movb %r8b, %bl                            #  4     0xd   3      OPC=movb_r8_r8        
  retq                                      #  5     0x10  1      OPC=retq              
                                                                                        
.size target, .-target
