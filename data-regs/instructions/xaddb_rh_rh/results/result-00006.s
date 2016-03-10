  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  xorb %al, %al     #  1     0    2      OPC=xorb_r8_r8      
  movswq %ax, %rdx  #  2     0x2  4      OPC=movswq_r64_r16  
  setae %dl         #  3     0x6  3      OPC=setae_r8        
  addb %bh, %ah     #  4     0x9  2      OPC=addb_rh_rh      
  movzwq %dx, %rbx  #  5     0xb  4      OPC=movzwq_r64_r16  
  retq              #  6     0xf  1      OPC=retq            
                                                             
.size target, .-target
