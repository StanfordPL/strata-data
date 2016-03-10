  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                
.target:                                    #        0     0      OPC=<label>           
  movq $0xec, %rbx                          #  1     0     10     OPC=movq_r64_imm64    
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  2     0xa   5      OPC=callq_label       
  salb $0x1, %bl                            #  3     0xf   2      OPC=salb_r8_one       
  cmovngew %r8w, %bx                        #  4     0x11  5      OPC=cmovngew_r16_r16  
  retq                                      #  5     0x16  1      OPC=retq              
                                                                                        
.size target, .-target
