  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  callq .move_064_032_rcx_r10d_r11d  #  1     0     5      OPC=callq_label    
  salw $0x1, %r10w                   #  2     0x5   4      OPC=salw_r16_one   
  xchgq %rdx, %rcx                   #  3     0x9   3      OPC=xchgq_r64_r64  
  callq .read_cf_into_rbx            #  4     0xc   5      OPC=callq_label    
  sarq %cl, %rdx                     #  5     0x11  3      OPC=sarq_r64_cl    
  xchgq %rdx, %rbx                   #  6     0x14  3      OPC=xchgq_r64_r64  
  retq                               #  7     0x17  1      OPC=retq           
                                                                              
.size target, .-target
