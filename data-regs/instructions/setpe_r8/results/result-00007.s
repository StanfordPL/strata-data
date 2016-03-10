  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xffffffffffffffff, %rbx  #  1     0     10     OPC=movq_r64_imm64  
  setp %r14b                      #  2     0xa   4      OPC=setp_r8         
  xaddl %ebx, %ebx                #  3     0xe   3      OPC=xaddl_r32_r32   
  xchgb %r14b, %bl                #  4     0x11  3      OPC=xchgb_r8_r8     
  retq                            #  5     0x14  1      OPC=retq            
                                                                            
.size target, .-target
