  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode            
.target:                   #        0    0      OPC=<label>       
  callq .read_pf_into_rcx  #  1     0    5      OPC=callq_label   
  shlb $0x1, %ch           #  2     0x5  2      OPC=shlb_rh_one   
  setne %ch                #  3     0x7  3      OPC=setne_rh      
  movw %cx, %bx            #  4     0xa  3      OPC=movw_r16_r16  
  retq                     #  5     0xd  1      OPC=retq          
                                                                  
.size target, .-target
