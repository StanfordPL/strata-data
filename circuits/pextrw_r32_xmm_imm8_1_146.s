  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode              
.target:                                    #        0     0      OPC=<label>         
  movq $0x5, %rbx                           #  1     0     10     OPC=movq_r64_imm64  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  2     0xa   5      OPC=callq_label     
  xorw %bx, %bx                             #  3     0xf   3      OPC=xorw_r16_r16    
  decw %bx                                  #  4     0x12  3      OPC=decw_r16        
  xchgw %dx, %bx                            #  5     0x15  3      OPC=xchgw_r16_r16   
  retq                                      #  6     0x18  1      OPC=retq            
                                                                                      
.size target, .-target
