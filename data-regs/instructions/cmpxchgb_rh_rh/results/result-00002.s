  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP   Bytes  Opcode              
.target:           #        0     0      OPC=<label>         
  movq $0x4, %rdx  #  1     0     10     OPC=movq_r64_imm64  
  addb %ch, %dh    #  2     0xa   2      OPC=addb_rh_rh      
  cmpb %bh, %al    #  3     0xc   2      OPC=cmpb_r8_rh      
  movsbw %bh, %ax  #  4     0xe   4      OPC=movsbw_r16_rh   
  cmovzw %dx, %bx  #  5     0x12  4      OPC=cmovzw_r16_r16  
  retq             #  6     0x16  1      OPC=retq            
                                                             
.size target, .-target
