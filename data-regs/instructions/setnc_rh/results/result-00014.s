  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  callq .read_cf_into_rcx  #  1     0     5      OPC=callq_label     
  movq $0x1, %r9           #  2     0x5   10     OPC=movq_r64_imm64  
  xorw %r9w, %cx           #  3     0xf   4      OPC=xorw_r16_r16    
  setnz %ah                #  4     0x13  3      OPC=setnz_rh        
  retq                     #  5     0x16  1      OPC=retq            
                                                                     
.size target, .-target
