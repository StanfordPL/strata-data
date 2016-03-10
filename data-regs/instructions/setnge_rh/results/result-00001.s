  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode            
.target:                   #        0     0      OPC=<label>       
  callq .read_of_into_rbx  #  1     0     5      OPC=callq_label   
  callq .read_sf_into_rcx  #  2     0x5   5      OPC=callq_label   
  xorq %rbx, %rcx          #  3     0xa   3      OPC=xorq_r64_r64  
  shlb $0x1, %cl           #  4     0xd   2      OPC=shlb_r8_one   
  setne %ah                #  5     0xf   3      OPC=setne_rh      
  retq                     #  6     0x12  1      OPC=retq          
                                                                   
.size target, .-target
