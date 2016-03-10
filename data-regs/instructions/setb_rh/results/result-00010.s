  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  callq .read_cf_into_rbx  #  1     0     5      OPC=callq_label    
  movzbl %bl, %r8d         #  2     0x5   4      OPC=movzbl_r32_r8  
  xaddl %r8d, %r8d         #  3     0x9   4      OPC=xaddl_r32_r32  
  setnp %ah                #  4     0xd   3      OPC=setnp_rh       
  retq                     #  5     0x10  1      OPC=retq           
                                                                    
.size target, .-target
