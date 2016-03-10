  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  addb %bl, %ah      #  1     0    2      OPC=addb_rh_r8      
  movsbl %ah, %ebp   #  2     0x2  3      OPC=movsbl_r32_rh   
  movslq %ebp, %rbx  #  3     0x5  3      OPC=movslq_r64_r32  
  retq               #  4     0x8  1      OPC=retq            
                                                              
.size target, .-target
