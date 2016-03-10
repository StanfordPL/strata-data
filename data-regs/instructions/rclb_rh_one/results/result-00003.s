  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  callq .read_cf_into_rcx  #  1     0     5      OPC=callq_label    
  movsbl %ah, %ebx         #  2     0x5   3      OPC=movsbl_r32_rh  
  adcb %bl, %ah            #  3     0x8   2      OPC=adcb_rh_r8     
  xorb %cl, %bh            #  4     0xa   2      OPC=xorb_rh_r8     
  movl %ebx, %r10d         #  5     0xc   3      OPC=movl_r32_r32   
  xaddb %bl, %r10b         #  6     0xf   4      OPC=xaddb_r8_r8    
  retq                     #  7     0x13  1      OPC=retq           
                                                                    
.size target, .-target
