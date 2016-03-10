  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode               
.target:                                    #        0     0      OPC=<label>          
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label      
  movq $0x0, %rbx                           #  2     0x5   10     OPC=movq_r64_imm64   
  andw %r9w, %ax                            #  3     0xf   4      OPC=andw_r16_r16     
  cmovncw %r9w, %bx                         #  4     0x13  5      OPC=cmovncw_r16_r16  
  retq                                      #  5     0x18  1      OPC=retq             
                                                                                       
.size target, .-target
