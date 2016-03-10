  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP   Bytes  Opcode              
.target:           #        0     0      OPC=<label>         
  movq $0x8, %rbx  #  1     0     10     OPC=movq_r64_imm64  
  setnae %dh       #  2     0xa   3      OPC=setnae_rh       
  xaddb %bl, %dh   #  3     0xd   3      OPC=xaddb_rh_r8     
  setpo %bl        #  4     0x10  3      OPC=setpo_r8        
  retq             #  5     0x13  1      OPC=retq            
                                                             
.size target, .-target
