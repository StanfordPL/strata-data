  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  callq .read_pf_into_rcx  #  1     0     5      OPC=callq_label     
  movq $0x4, %rax          #  2     0x5   10     OPC=movq_r64_imm64  
  xorb %ah, %cl            #  3     0xf   2      OPC=xorb_r8_rh      
  decb %cl                 #  4     0x11  2      OPC=decb_r8         
  movsbq %cl, %r11         #  5     0x13  4      OPC=movsbq_r64_r8   
  rolb $0x1, %r11b         #  6     0x17  3      OPC=rolb_r8_one     
  setnae %ah               #  7     0x1a  3      OPC=setnae_rh       
  retq                     #  8     0x1d  1      OPC=retq            
                                                                     
.size target, .-target
