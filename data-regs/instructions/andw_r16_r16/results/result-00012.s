  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                   #  Line  RIP   Bytes  Opcode              
.target:                 #        0     0      OPC=<label>         
  movswq %bx, %r12       #  1     0     4      OPC=movswq_r64_r16  
  andb %r12b, %bl        #  2     0x4   3      OPC=andb_r8_r8      
  andb %ch, %bh          #  3     0x7   2      OPC=andb_rh_rh      
  andb %cl, %bl          #  4     0x9   2      OPC=andb_r8_r8      
  callq .set_szp_for_bx  #  5     0xb   5      OPC=callq_label     
  retq                   #  6     0x10  1      OPC=retq            
                                                                   
.size target, .-target
