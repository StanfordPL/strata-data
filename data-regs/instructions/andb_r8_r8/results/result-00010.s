  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP   Bytes  Opcode              
.target:             #        0     0      OPC=<label>         
  movq $0x6, %r8     #  1     0     10     OPC=movq_r64_imm64  
  movzwq %r8w, %rdi  #  2     0xa   4      OPC=movzwq_r64_r16  
  movb %cl, %ah      #  3     0xe   2      OPC=movb_rh_r8      
  andb %ah, %bl      #  4     0x10  2      OPC=andb_r8_rh      
  rolw $0x1, %di     #  5     0x12  3      OPC=rolw_r16_one    
  retq               #  6     0x15  1      OPC=retq            
                                                               
.size target, .-target
