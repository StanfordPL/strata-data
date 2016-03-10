  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  setbe %r10b              #  1     0     4      OPC=setbe_r8        
  callq .read_zf_into_rbx  #  2     0x4   5      OPC=callq_label     
  adcb %bl, %r10b          #  3     0x9   3      OPC=adcb_r8_r8      
  movzwq %bx, %rdx         #  4     0xc   4      OPC=movzwq_r64_r16  
  setz %dh                 #  5     0x10  3      OPC=setz_rh         
  movzwq %dx, %rax         #  6     0x13  4      OPC=movzwq_r64_r16  
  retq                     #  7     0x17  1      OPC=retq            
                                                                     
.size target, .-target
