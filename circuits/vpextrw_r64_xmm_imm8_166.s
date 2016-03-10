  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode               
.target:                                    #        0     0      OPC=<label>          
  movq $0x8, %rbx                           #  1     0     10     OPC=movq_r64_imm64   
  shlb $0x1, %bl                            #  2     0xa   2      OPC=shlb_r8_one      
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  3     0xc   5      OPC=callq_label      
  cmovnlw %r9w, %bx                         #  4     0x11  5      OPC=cmovnlw_r16_r16  
  retq                                      #  5     0x16  1      OPC=retq             
                                                                                       
.size target, .-target
