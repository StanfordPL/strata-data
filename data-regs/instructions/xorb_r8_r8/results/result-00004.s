  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  xorq %rax, %rax          #  1     0     3      OPC=xorq_r64_r64    
  addb %bl, %ah            #  2     0x3   2      OPC=addb_rh_r8      
  xorb %cl, %ah            #  3     0x5   2      OPC=xorb_rh_r8      
  callq .read_cf_into_rbx  #  4     0x7   5      OPC=callq_label     
  addb %bl, %ah            #  5     0xc   2      OPC=addb_rh_r8      
  movswl %bx, %ebx         #  6     0xe   3      OPC=movswl_r32_r16  
  xorb %ah, %bl            #  7     0x11  2      OPC=xorb_r8_rh      
  retq                     #  8     0x13  1      OPC=retq            
                                                                     
.size target, .-target
