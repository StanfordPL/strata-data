  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movsbq %cl, %rsi                #  1     0     4      OPC=movsbq_r64_r8   
  movq $0xfffffffffffffffe, %rbx  #  2     0x4   10     OPC=movq_r64_imm64  
  xaddw %bx, %si                  #  3     0xe   5      OPC=xaddw_r16_r16   
  retq                            #  4     0x13  1      OPC=retq            
                                                                            
.size target, .-target
