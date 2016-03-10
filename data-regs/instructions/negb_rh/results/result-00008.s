  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode               
.target:                   #        0     0      OPC=<label>          
  notb %ah                 #  1     0     2      OPC=notb_rh          
  movq $0x40, %r8          #  2     0x2   10     OPC=movq_r64_imm64   
  decq %r8                 #  3     0xc   3      OPC=decq_r64         
  callq .read_pf_into_rcx  #  4     0xf   5      OPC=callq_label      
  popcntq %r8, %rdi        #  5     0x14  5      OPC=popcntq_r64_r64  
  adcb %cl, %ah            #  6     0x19  2      OPC=adcb_rh_r8       
  cmc                      #  7     0x1b  1      OPC=cmc              
  retq                     #  8     0x1c  1      OPC=retq             
                                                                      
.size target, .-target
