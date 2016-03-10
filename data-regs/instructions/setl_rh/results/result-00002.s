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
  movswq %cx, %r12         #  3     0xa   4      OPC=movswq_r64_r16  
  movswq %r12w, %r11       #  4     0xe   4      OPC=movswq_r64_r16  
  xorq %r11, %rbx          #  5     0x12  3      OPC=xorq_r64_r64    
  setne %ah                #  6     0x15  3      OPC=setne_rh        
  retq                     #  7     0x18  1      OPC=retq            
                                                                     
.size target, .-target
