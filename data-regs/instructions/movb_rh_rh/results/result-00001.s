  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                            #  Line  RIP   Bytes  Opcode               
.target:                          #        0     0      OPC=<label>          
  movq $0xffffffffffffffff, %rax  #  1     0     10     OPC=movq_r64_imm64   
  popcntq %rax, %r9               #  2     0xa   5      OPC=popcntq_r64_r64  
  setnbe %bl                      #  3     0xf   3      OPC=setnbe_r8        
  xaddl %eax, %r9d                #  4     0x12  4      OPC=xaddl_r32_r32    
  adcw %bx, %ax                   #  5     0x16  3      OPC=adcw_r16_r16     
  retq                            #  6     0x19  1      OPC=retq             
                                                                             
.size target, .-target
