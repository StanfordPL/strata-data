  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP   Bytes  Opcode              
.target:             #        0     0      OPC=<label>         
  xorq %rax, %rax    #  1     0     3      OPC=xorq_r64_r64    
  cwtd               #  2     0x3   2      OPC=cwtd            
  xorb %bl, %ah      #  3     0x5   2      OPC=xorb_rh_r8      
  rolb $0x1, %dl     #  4     0x7   2      OPC=rolb_r8_one     
  cmovbl %eax, %ecx  #  5     0x9   3      OPC=cmovbl_r32_r32  
  addb %bl, %bl      #  6     0xc   2      OPC=addb_r8_r8      
  addb %bl, %dh      #  7     0xe   2      OPC=addb_rh_r8      
  sbbb %cl, %ah      #  8     0x10  2      OPC=sbbb_rh_r8      
  retq               #  9     0x12  1      OPC=retq            
                                                               
.size target, .-target
