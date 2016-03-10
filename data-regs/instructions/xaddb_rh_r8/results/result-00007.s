  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode               
.target:                   #        0     0      OPC=<label>          
  movzbl %ah, %esi         #  1     0     3      OPC=movzbl_r32_rh    
  movb %bl, %al            #  2     0x3   2      OPC=movb_r8_r8       
  popcntq %rsi, %r9        #  3     0x5   5      OPC=popcntq_r64_r64  
  callq .read_pf_into_rbx  #  4     0xa   5      OPC=callq_label      
  xaddl %ebx, %esi         #  5     0xf   3      OPC=xaddl_r32_r32    
  addb %al, %ah            #  6     0x12  2      OPC=addb_rh_r8       
  retq                     #  7     0x14  1      OPC=retq             
                                                                      
.size target, .-target
