  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                  #  Line  RIP  Bytes  Opcode                
.target:                #        0    0      OPC=<label>           
  movmskpd %xmm1, %rbx  #  1     0    4      OPC=movmskpd_r64_xmm  
  addb %bl, %bl         #  2     0x4  2      OPC=addb_r8_r8        
  sarl $0x1, %ebx       #  3     0x6  2      OPC=sarl_r32_one      
  retq                  #  4     0x8  1      OPC=retq              
                                                                   
.size target, .-target
