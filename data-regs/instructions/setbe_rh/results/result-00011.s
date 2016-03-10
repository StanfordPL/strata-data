  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  callq .read_zf_into_rcx  #  1     0     5      OPC=callq_label     
  movzbw %cl, %dx          #  2     0x5   4      OPC=movzbw_r16_r8   
  rcll $0x1, %ecx          #  3     0x9   2      OPC=rcll_r32_one    
  xaddb %ch, %dl           #  4     0xb   3      OPC=xaddb_r8_rh     
  movswq %cx, %rdx         #  5     0xe   4      OPC=movswq_r64_r16  
  shll $0x1, %edx          #  6     0x12  2      OPC=shll_r32_one    
  setnz %ah                #  7     0x14  3      OPC=setnz_rh        
  retq                     #  8     0x17  1      OPC=retq            
                                                                     
.size target, .-target
