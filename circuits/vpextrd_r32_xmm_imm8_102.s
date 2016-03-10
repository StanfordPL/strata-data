  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  movq $0x6, %rbx                   #  1     0     10     OPC=movq_r64_imm64           
  vfmsub213sd %xmm1, %xmm1, %xmm1   #  2     0xa   5      OPC=vfmsub213sd_xmm_xmm_xmm  
  callq .move_128_064_xmm1_r12_r13  #  3     0xf   5      OPC=callq_label              
  xaddb %bl, %bl                    #  4     0x14  3      OPC=xaddb_r8_r8              
  negw %bx                          #  5     0x17  3      OPC=negw_r16                 
  cmovnael %r13d, %ebx              #  6     0x1a  4      OPC=cmovnael_r32_r32         
  retq                              #  7     0x1e  1      OPC=retq                     
                                                                                       
.size target, .-target
