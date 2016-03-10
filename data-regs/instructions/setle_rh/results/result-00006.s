  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  callq .read_zf_into_rcx  #  1     0     5      OPC=callq_label     
  setnge %ch               #  2     0x5   3      OPC=setnge_rh       
  movswq %cx, %rdx         #  3     0x8   4      OPC=movswq_r64_r16  
  shlw $0x1, %dx           #  4     0xc   3      OPC=shlw_r16_one    
  setnz %ah                #  5     0xf   3      OPC=setnz_rh        
  retq                     #  6     0x12  1      OPC=retq            
                                                                     
.size target, .-target
