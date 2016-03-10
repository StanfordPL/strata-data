  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode               
.target:                   #        0     0      OPC=<label>          
  movzbl %bl, %r9d         #  1     0     4      OPC=movzbl_r32_r8    
  popcntw %r9w, %dx        #  2     0x4   6      OPC=popcntw_r16_r16  
  setnc %ch                #  3     0xa   3      OPC=setnc_rh         
  callq .read_cf_into_rbx  #  4     0xd   5      OPC=callq_label      
  xchgw %cx, %bx           #  5     0x12  3      OPC=xchgw_r16_r16    
  adcw %r9w, %cx           #  6     0x15  4      OPC=adcw_r16_r16     
  retq                     #  7     0x19  1      OPC=retq             
                                                                      
.size target, .-target
