  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                 
.target:                              #        0     0      OPC=<label>            
  movq $0x6f, %r8                     #  1     0     10     OPC=movq_r64_imm64     
  andnl %r8d, %r8d, %esi              #  2     0xa   5      OPC=andnl_r32_r32_r32  
  callq .move_byte_15_of_ymm1_to_r8b  #  3     0xf   5      OPC=callq_label        
  movq $0xffffffffffffff80, %rbx      #  4     0x14  10     OPC=movq_r64_imm64     
  cmovngq %r8, %rbx                   #  5     0x1e  4      OPC=cmovngq_r64_r64    
  retq                                #  6     0x22  1      OPC=retq               
                                                                                   
.size target, .-target
