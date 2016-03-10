  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                 #  Line  RIP  Bytes  Opcode                
.target:               #        0    0      OPC=<label>           
  cmovnleq %rcx, %rbx  #  1     0    4      OPC=cmovnleq_r64_r64  
  andb %bl, %bl        #  2     0x4  2      OPC=andb_r8_r8        
  orw %bx, %bx         #  3     0x6  3      OPC=orw_r16_r16       
  retq                 #  4     0x9  1      OPC=retq              
                                                                  
.size target, .-target
