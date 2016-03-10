  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                           #  Line  RIP   Bytes  Opcode              
.target:                         #        0     0      OPC=<label>         
  movq $0xffffffffffffffff, %r8  #  1     0     10     OPC=movq_r64_imm64  
  xorq %rax, %rax                #  2     0xa   3      OPC=xorq_r64_r64    
  callq .read_sf_into_rcx        #  3     0xd   5      OPC=callq_label     
  adcq %rax, %rcx                #  4     0x12  3      OPC=adcq_r64_r64    
  adcw %r8w, %bx                 #  5     0x15  4      OPC=adcw_r16_r16    
  retq                           #  6     0x19  1      OPC=retq            
                                                                           
.size target, .-target
