  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                           #  Line  RIP   Bytes  Opcode              
.target:                         #        0     0      OPC=<label>         
  callq .read_of_into_rbx        #  1     0     5      OPC=callq_label     
  movq $0xfffffffffffffffe, %r9  #  2     0x5   10     OPC=movq_r64_imm64  
  callq .read_of_into_rcx        #  3     0xf   5      OPC=callq_label     
  shlb $0x1, %bl                 #  4     0x14  2      OPC=shlb_r8_one     
  movzbq %bl, %rsi               #  5     0x16  4      OPC=movzbq_r64_r8   
  rolw $0x1, %r9w                #  6     0x1a  4      OPC=rolw_r16_one    
  sarq %cl, %rsi                 #  7     0x1e  3      OPC=sarq_r64_cl     
  setc %ah                       #  8     0x21  3      OPC=setc_rh         
  retq                           #  9     0x24  1      OPC=retq            
                                                                           
.size target, .-target
