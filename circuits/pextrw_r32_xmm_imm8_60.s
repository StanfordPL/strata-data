  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode              
.target:                                    #        0     0      OPC=<label>         
  movq $0x80, %rbx                          #  1     0     10     OPC=movq_r64_imm64  
  incl %ebx                                 #  2     0xa   2      OPC=incl_r32        
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  3     0xc   5      OPC=callq_label     
  movl %r8d, %r15d                          #  4     0x11  3      OPC=movl_r32_r32    
  negw %bx                                  #  5     0x14  3      OPC=negw_r16        
  cmovbw %r15w, %bx                         #  6     0x17  5      OPC=cmovbw_r16_r16  
  retq                                      #  7     0x1c  1      OPC=retq            
                                                                                      
.size target, .-target
