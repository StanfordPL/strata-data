  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                #  Line  RIP  Bytes  Opcode              
.target:              #        0    0      OPC=<label>         
  movb %bl, %bh       #  1     0    2      OPC=movb_rh_r8      
  sarw $0x1, %bx      #  2     0x2  3      OPC=sarw_r16_one    
  movswq %bx, %r12    #  3     0x5  4      OPC=movswq_r64_r16  
  xaddb %r12b, %r12b  #  4     0x9  4      OPC=xaddb_r8_r8     
  retq                #  5     0xd  1      OPC=retq            
                                                               
.size target, .-target
