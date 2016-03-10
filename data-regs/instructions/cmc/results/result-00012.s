  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  callq .read_cf_into_rbx  #  1     0     5      OPC=callq_label    
  movzbq %bl, %rdx         #  2     0x5   4      OPC=movzbq_r64_r8  
  adcb %bl, %dh            #  3     0x9   2      OPC=adcb_rh_r8     
  decb %dh                 #  4     0xb   2      OPC=decb_rh        
  movl %edx, %ebx          #  5     0xd   2      OPC=movl_r32_r32   
  shlb $0x1, %bh           #  6     0xf   2      OPC=shlb_rh_one    
  retq                     #  7     0x11  1      OPC=retq           
                                                                    
.size target, .-target
