  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                   #  Line  RIP   Bytes  Opcode                 
.target:                 #        0     0      OPC=<label>            
  vmovmskpd %ymm1, %rdi  #  1     0     4      OPC=vmovmskpd_r64_ymm  
  movq $0x8, %rbx        #  2     0x4   10     OPC=movq_r64_imm64     
  andb %bh, %bl          #  3     0xe   2      OPC=andb_r8_rh         
  addb %dil, %bl         #  4     0x10  3      OPC=addb_r8_r8         
  retq                   #  5     0x13  1      OPC=retq               
                                                                      
.size target, .-target
