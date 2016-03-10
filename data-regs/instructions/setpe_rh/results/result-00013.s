  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  clc                      #  1     0     1      OPC=clc             
  movq $0x40, %rax         #  2     0x1   10     OPC=movq_r64_imm64  
  callq .read_pf_into_rbx  #  3     0xb   5      OPC=callq_label     
  cltq                     #  4     0x10  2      OPC=cltq            
  adcl %eax, %eax          #  5     0x12  2      OPC=adcl_r32_r32    
  addb %bl, %ah            #  6     0x14  2      OPC=addb_rh_r8      
  retq                     #  7     0x16  1      OPC=retq            
                                                                     
.size target, .-target
