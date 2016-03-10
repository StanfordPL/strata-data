  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode               
.target:                   #        0     0      OPC=<label>          
  movsbq %cl, %rdi         #  1     0     4      OPC=movsbq_r64_r8    
  popcntq %rdi, %r8        #  2     0x4   5      OPC=popcntq_r64_r64  
  callq .read_zf_into_rcx  #  3     0x9   5      OPC=callq_label      
  rcll $0x1, %r8d          #  4     0xe   3      OPC=rcll_r32_one     
  movzbq %bl, %r9          #  5     0x11  4      OPC=movzbq_r64_r8    
  adcb %dil, %bl           #  6     0x15  3      OPC=adcb_r8_r8       
  xchgw %r9w, %cx          #  7     0x18  4      OPC=xchgw_r16_r16    
  retq                     #  8     0x1c  1      OPC=retq             
                                                                      
.size target, .-target
