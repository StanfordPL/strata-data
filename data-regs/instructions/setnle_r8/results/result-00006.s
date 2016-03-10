  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  setle %r14b              #  1     0     4      OPC=setle_r8       
  movzbw %r14b, %ax        #  2     0x4   5      OPC=movzbw_r16_r8  
  xaddb %ah, %al           #  3     0x9   3      OPC=xaddb_r8_rh    
  callq .read_pf_into_rbx  #  4     0xc   5      OPC=callq_label    
  retq                     #  5     0x11  1      OPC=retq           
                                                                    
.size target, .-target
