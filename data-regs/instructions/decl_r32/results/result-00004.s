  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  callq .move_byte_2_of_rbx_to_r8b  #  1     0     5      OPC=callq_label     
  xorq %rax, %rax                   #  2     0x5   3      OPC=xorq_r64_r64    
  xaddl %ebx, %eax                  #  3     0x8   3      OPC=xaddl_r32_r32   
  movq $0xffffffffffffffff, %rbx    #  4     0xb   10     OPC=movq_r64_imm64  
  callq .move_r8b_to_byte_5_of_rbx  #  5     0x15  5      OPC=callq_label     
  rolb $0x1, %bl                    #  6     0x1a  2      OPC=rolb_r8_one     
  xaddl %eax, %ebx                  #  7     0x1c  3      OPC=xaddl_r32_r32   
  retq                              #  8     0x1f  1      OPC=retq            
                                                                              
.size target, .-target
