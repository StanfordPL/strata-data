  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movq $0xfffffffffffffff9, %rbx    #  1     0     10     OPC=movq_r64_imm64  
  callq .move_016_008_bx_r8b_r9b    #  2     0xa   5      OPC=callq_label     
  movzbw %ah, %cx                   #  3     0xf   4      OPC=movzbw_r16_rh   
  movsbq %cl, %rdi                  #  4     0x13  4      OPC=movsbq_r64_r8   
  movslq %edi, %rbx                 #  5     0x17  3      OPC=movslq_r64_r32  
  callq .move_r9b_to_byte_6_of_rbx  #  6     0x1a  5      OPC=callq_label     
  retq                              #  7     0x1f  1      OPC=retq            
                                                                              
.size target, .-target
